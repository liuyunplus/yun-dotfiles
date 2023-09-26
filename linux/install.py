import os

home_dir = os.path.expanduser("~")
work_dir = os.getcwd()


def config_zsh():
    os.system("rm -rf ~/.zshrc")
    os.system(f"ln -sf {work_dir}/zshrc ~/.zshrc")
    print("zsh config done.")


def config_vim():
    os.system("rm -rf ~/.config/nvim")
    os.system(f"ln -sf {work_dir}/nvim ~/.config/nvim")
    print("neovim config done.")


def config_git():
    os.system("rm -rf ~/.gitconfig")
    os.system("rm -rf ~/.gitignore")
    os.system(f"ln -sf {work_dir}/git/gitconfig ~/.gitconfig")
    os.system(f"ln -sf {work_dir}/git/gitignore ~/.gitignore")
    print("git config done.")


def config_ssh():
    os.system("rm -rf ~/.ssh/config")
    os.system(f"ln -sf {work_dir}/ssh/config ~/.ssh/config")

    ssh_dir = f"{home_dir}/.ssh"
    if not os.path.exists(f"{ssh_dir}/id_rsa_github"):
        os.system(f'ssh-keygen -q -m PEM -t rsa -b 4096 -N "" -C "liuyunplus@gmail.com" -f {ssh_dir}/id_rsa_github')
    if not os.path.exists(f"{ssh_dir}/id_rsa_gitee"):
        os.system(f'ssh-keygen -q -m PEM -t rsa -b 4096 -N "" -C "liuyunplus@gmail.com" -f {ssh_dir}/id_rsa_gitee')
    print("ssh config done.")


def config_python():
    os.system("rm -rf ~/.pip")
    os.system(f"ln -sf {work_dir}/python/pip ~/.pip")
    os.system("python3 -m venv ~/.pyenv")
    print("python config done.")


def config_espanso():
    os.system("rm -rf ~/.config/espanso")
    os.system(f"ln -sf {work_dir}/espanso ~/.config/espanso")
    print("espanso config done.")


def config_latexmkrc():
    os.system("rm -rf ~/.latexmkrc")
    os.system(f"ln -sf {work_dir}/latex/latexmkrc ~/.latexmkrc")
    print("latex config done.")


def mian():
    config_zsh()
    config_vim()
    config_git()
    config_ssh()
    config_python()
    config_espanso()
    config_latexmkrc()
    print("install done!")


mian()