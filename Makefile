# Variables del Makefile

	#URL de la instal·lació (aquest repositori conté molts jocs fets en Python)
URL = https://github.com/pyGuru123/Python-Games.git

	# Hi ha molts jocs de Python, modificar per canviar el joc a seleccionar :)
JOC = MineSweeper

	# Directori on es va a guardar el repositori amb tots els jocs
DIR_REPO = ~/Python-Games/

	# Directori on es va a instal·lar el joc
REPO_INSTALAR = /usr/local/bin

	#TAR.GZ
TGZ = MineSweeper.tar.gz

# Comandaments per als Python-Games (sols vullc el MineSweeper)

install:
	git clone $(URL) $(DIR_REPO) && cd $(DIR_REPO) && tar -czf $(TGZ) $(JOC) && sudo mv $(TGZ) $(REPO_INSTALAR) && cd $(REPO_INSTALAR) && sudo tar -xvzf $(TGZ)
update:
	cd $(DIR_REPO) && git pull

uninstall:
	sudo rm $(REPO_INSTALAR)/MineSweeper*

clean:
	rm -rf $(DIR_REPO)

delete:
	sudo rm -rf $(REPO_INSTALAR)/MineSweeper* && rm -rf $(DIR_REPO)

man:
	cat ~/INSTALL
