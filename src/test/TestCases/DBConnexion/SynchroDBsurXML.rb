#{{{ Marathon
require_fixture 'default'
#}}} Marathon

def test

    with_window("Bibliotheque") {
        select_fx_menu("#menu", "Edit>>Open File")
        select_file_chooser("#filechooser", "[\"#H/IdeaProjects/biblio/Biblio.xml\"]")
        click("DBButton")
    }

    with_window("Synchronisation Base de donn�es") {
        click("overwriteButton")
    }

end
