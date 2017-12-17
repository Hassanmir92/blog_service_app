require "rails_helper"

feature "Messages Index:" do

  before(:each) do
  end

  scenario "The root path links to the messages index action", js: true do
    visit "/"

    expect(page).to have_content("Messages")
  end

  scenario "Successfully create a new message", js: true do
    visit "/"

    fill_in "message_body", :with => "New example message"
    click_on "Submit"

    expect(page.current_path).to eq("/")
    expect(page).to have_content("Messages")
    expect(page).to have_content("New example message")
  end

  scenario "Fail to create a new message with over 150 characters", js: true do
    visit "/"

    fill_in "message_body", :with => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac tamen hic mallet non dolere. Ita redarguitur ipse a sese, convincunturque scripta eius probitate ipsius ac moribus. Isto modo ne improbos quidem, si essent boni viri. At hoc in eo M. Quae fere omnia appellantur uno ingenii nomine, easque virtutes qui habent, ingeniosi vocantur. Duo Reges: constructio interrete. Ergo instituto veterum, quo etiam Stoici utuntur, hinc capiamus exordium. Quae contraria sunt his, malane? Sequitur disserendi ratio cognitioque naturae; Fortitudinis quaedam praecepta sunt ac paene leges, quae effeminari virum vetant in dolore. Omnia contraria, quos etiam insanos esse vultis. Sed vos squalidius, illorum vides quam niteat oratio. Inde sermone vario [redacted] illa a Dipylo stadia confecimus. Hoc etsi multimodis reprehendi potest, tamen accipio, quod dant. Quorum sine causa fieri nihil putandum est. Quorum sine causa fieri nihil putandum est. Ratio enim nostra consentit, pugnat oratio. Cur deinde Metrodori liberos commendas? Idemne potest esse dies saepius, qui semel fuit? Mene ergo et Triarium dignos existimas, apud quos turpiter loquare? Qui autem esse poteris, nisi te amor ipse ceperit? Quid est igitur, inquit, quod requiras? Videmus igitur ut conquiescere ne infantes quidem possint. Duae sunt enim res quoque, ne tu verba solum putes. Sed potestne rerum maior esse dissensio? Quid de Platone aut de Democrito loquar?"
    click_on "Submit"

    expect(page.current_path).to eq("/")
    expect(page).to have_content("Messages")
    expect(page).to have_content("Unsuccessful to submit your message cannot exceed 150 characters!")
  end

  scenario "Fail to create a new message with over no characters", js: true do
    visit "/"
    fill_in "message_body", :with => ""
    click_on "Submit"

    expect(page.current_path).to eq("/")
    expect(page).to have_content("Messages")
    expect(page).to have_content("Unsuccessful to submit as your message is empty!")
  end
end
