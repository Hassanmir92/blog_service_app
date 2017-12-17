require 'rails_helper'

RSpec.describe Message, :type => :model do
  it "is valid with valid attributes" do
    message = Message.new(body: "Testing body")
    expect(message).to be_valid
  end

  it "is not valid without a body" do
    message = Message.new(body: "")
    expect(message).to_not be_valid
  end

  it "is not valid with a body with over 150 characters" do
    message = Message.new(body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac tamen hic mallet non dolere. Ita redarguitur ipse a sese, convincunturque scripta eius probitate ipsius ac moribus. Isto modo ne improbos quidem, si essent boni viri. At hoc in eo M. Quae fere omnia appellantur uno ingenii nomine, easque virtutes qui habent, ingeniosi vocantur. Duo Reges: constructio interrete. Ergo instituto veterum, quo etiam Stoici utuntur, hinc capiamus exordium. Quae contraria sunt his, malane? Sequitur disserendi ratio cognitioque naturae; Fortitudinis quaedam praecepta sunt ac paene leges, quae effeminari virum vetant in dolore. Omnia contraria, quos etiam insanos esse vultis. Sed vos squalidius, illorum vides quam niteat oratio. Inde sermone vario [redacted] illa a Dipylo stadia confecimus. Hoc etsi multimodis reprehendi potest, tamen accipio, quod dant. Quorum sine causa fieri nihil putandum est. Quorum sine causa fieri nihil putandum est. Ratio enim nostra consentit, pugnat oratio. Cur deinde Metrodori liberos commendas? Idemne potest esse dies saepius, qui semel fuit? Mene ergo et Triarium dignos existimas, apud quos turpiter loquare? Qui autem esse poteris, nisi te amor ipse ceperit? Quid est igitur, inquit, quod requiras? Videmus igitur ut conquiescere ne infantes quidem possint. Duae sunt enim res quoque, ne tu verba solum putes. Sed potestne rerum maior esse dissensio? Quid de Platone aut de Democrito loquar?")
    expect(message).to_not be_valid
  end
end
