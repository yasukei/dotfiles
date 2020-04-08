rem ; Execute as administrator

mklink %HOMEPATH%\_gvimrc %cd%\_gvimrc
mklink %HOMEPATH%\.vimrc %cd%\.vimrc
mklink /D %HOMEPATH%\.vim %cd%\.vim

mklink %HOMEPATH%\.gitconfig %cd%\.gitconfig
mklink %HOMEPATH%\.gitignore %cd%\.gitignore

pause
