
def logo()
    k="\033[33;1m"
    p="\033[37;1m"
    h="\033[32;1m"
    m_="\033[41;1m"
    n="\033[00;1m"
    b="\033[34;1m"
    logo = """\n#{k}
\t=====================
\t╔═╗  ╔╦╗┌─┐┌─┐┬  ┌─┐
\t#{p}╔═╝───║ │ ││ ││  └─┐
\t╚═╝   ╩ └─┘└─┘┴─┘└─┘
\t=====================
"""
    puts "#{logo}"
end

def main()
    m="\033[31;1m"
    k="\033[33;1m"
    h="\033[32;1m"
    b="\033[34;1m"
    m_="\033[41;1m"
    n="\033[00;1m"
    p="\033[37;1m"
    system("clear")
    logo
    puts "          #{b}[ #{p}Menu #{b}]"
    puts ""
    puts "#{b}(#{p}1#{b}) #{h}Compress File To .Zip"
    puts "#{b}(#{p}2#{b}) #{h}Ekstrak .Zip File"
    puts "#{b}(#{p}3#{b}) #{h}Compress Video Size"
    puts "#{b}(#{p}4#{b}) #{h}Install Necessities"
    puts "#{b}(#{m}0#{b}) #{h}Exit"
    puts "#{b}===================================="
    choseOne()
end
def choseOne()
    # kode warna
    m="\033[31;1m"
    k="\033[33;1m"
    h="\033[32;1m"
    b="\033[34;1m"
    m_="\033[41;1m"
    n="\033[00;1m"
    p="\033[37;1m"
    print "#{b}(#{p}*#{b}) #{h}Choose Menu #{k}: #{p}"
    chose = gets.chomp.to_i
    if chose == 1
        zip()
    elsif chose == 2
        unzip()
    elsif chose == 3
        video()
    elsif chose == 4
        puts "#{p}(#{m}!#{p}) Please wait for the installation process"
        sleep(1)
        puts "Loading.."
        sleep(2)
        system("apt install ffmpeg ruby tree zip unzip")
        puts ""
        puts "#{p}(#{m}!#{p})IF FAIL TRY TO INSTALL MANUALY#{p}(#{m}!#{p})"
        puts ""
        puts "[ #{m_}apt install ffmpeg ruby tree zip unzip #{n}]"
        puts ""
        puts "#{b}[ #{p}Click Enter To Return  #{b}]"
        again = gets.chomp
        main
    elsif chose == 0
        system("clear")
        puts "#{p}(#{m}!#{p}) #{p} Exit the program"
    else
        puts "#{chose} It's not on the menu"
        sleep(2)
        main
    end
end
def zip()
    system("clear")
    m="\033[31;1m"
    k="\033[33;1m"
    h="\033[32;1m"
    b="\033[34;1m"
    m_="\033[41;1m"
    n="\033[00;1m"
    p="\033[37;1m"
    puts """\n#{k}
\t========================
\t╔═╗┬╔═╗  ╔╦╗┌─┐╔═╗┬  ╔═╗
\t#{n}╔═╝│╠═╝───║ │ │║ ║│  ╚═╗
\t╚═╝┴╩     ╩ └─┘╚═╝┴─┘╚═╝
\t========={V.1.2}========
\t
#{h}How to use #{p}:
#{k}Enter the file or folder name
will be compressed to zip.
If more than one file or folder
input like the example below.
#{h}Example #{p}: #{m}file.txt file2.txt
    """
    print "#{h}Cureent Folder #{k}: #{m}"
    system("pwd -P")
    puts "#{p}(#{m}!#{p}) #{h}Enter the location of the file to be compressed"
    puts "#{h}Example #{k}: #{m}/home/user/"
    print "#{k}Location #{m}: #{p}"
    loc = gets.chomp
    puts "#{p}(#{m}!#{p}) #{h}Enter the file to be compressed"
    print "#{k}Folder/File #{m}: #{p}"
    file = gets.chomp
    puts "#{p}(#{m}!#{p}) #{h}Enter the zipped file name"
    puts "#{h}Example #{k}: #{m}file.zip"
    print "#{k}file zip #{m}: #{p}"
    output = gets.chomp
    puts "#{p}(#{m}!#{p}) #{h}Enter Location to save the zip file"
    puts "#{h}Example #{k}: #{m}/home/user/"
    print "#{k}Location #{m}: #{p}"
    locoout = gets.chomp
    system("cd #{Location} && zip #{output} #{file} && mv #{output} #{locoout}")
    puts "#{b}====================================="
    puts "#{p}(#{h}✔#{p}) #{h}Zip compress is complete"
    puts "#{h}Zipped files     #{k}: #{p}#{file}"
    puts "#{h}The compressed file   #{k}: #{p}#{output}"
    puts "#{h}Zip files are stored in #{k}: #{p}#{locoout}"
    puts "#{b}=====================================\n"
    puts "#{b}[ #{p}Click Enter To Return #{b}]"
    again = gets.chomp
    main
end

def unzip()
    system("clear")
    # kode warna
    m="\033[31;1m"
    k="\033[33;1m"
    h="\033[32;1m"
    b="\033[34;1m"
    m_="\033[41;1m"
    n="\033[00;1m"
    p="\033[37;1m"
    puts """\n#{k}
\t=====================
\t╔═╗┬┌─┌─┐╔╦╗┬─┐┌─┐╦╔═
\t║╣ ├┴┐└─┐ ║ ├┬┘├─┤╠╩╗
\t╚═╝┴ ┴└─┘ ╩ ┴└─┴ ┴╩ ╩
\t#{p}  ╔╦╗┌─┐╔═╗┬  ╔═╗    
\t   ║ │ │║ ║│  ╚═╗    
\t   ╩ └─┘╚═╝┴─┘╚═╝    
\t#{k}======={V.1.2}=======

#{h}How to use #{p}:
#{k}Enter the Location and zip file name
which will be extracted.
    """
    print "#{h}Cureent Location #{k}: #{m}"
    system("pwd -P")
    puts "#{p}(#{m}!#{p}) #{h}Enter the location of the zip file to extract"
    puts "#{h}Example #{k}: #{m}/home/user/"
    print "#{k}Location #{m}: #{p}"
    loc = gets.chomp
    puts "#{p}(#{m}!#{p}) #{h}Enter the name of the zip file to extract"
    print "#{k}File zip #{m}: #{p}"
    file = gets.chomp
    system("cd #{Location} && unzip #{file}")
    puts "#{b}====================================="
    puts "#{p}(#{h}✔#{p}) #{h}Zip extract is complete"
    puts "#{h}Extracted files #{k}: #{p}#{file}"
    puts "#{h}Result file location    #{k}: #{p}#{Location}"
    puts "#{b}=====================================\n"
    puts "#{b}[ #{p}Click Enter To Return #{b}]"
    again = gets.chomp
    main
end
def video()
    system("clear")
    # kode warna
    m="\033[31;1m"
    k="\033[33;1m"
    h="\033[32;1m"
    b="\033[34;1m"
    m_="\033[41;1m"
    n="\033[00;1m"
    p="\033[37;1m"
    puts """\n#{k}
\t========================
\t╔═╗┌─┐┌┬┐╔═╗╦═╗┌─┐┌─┐╔═╗
\t║  │ ││││╠═╝╠╦╝├┤ └─┐╚═╗
\t╚═╝└─┘┴ ┴╩  ╩╚═└─┘└─┘╚═╝
\t    ╔╦╗┌─┐╔═╗┬  ╔═╗     
\t#{p}     ║ │ │║ ║│  ╚═╗     
\t     ╩ └─┘╚═╝┴─┘╚═╝ 
\t#{k}========={V.1.2}=========  
\t
#{h}How To Use #{p}:
#{k}Enter the location, the name of the video and the name of the video that will be compressed
    """
    print "#{h}Cureent Location #{k}: #{m}"
    system("pwd -P")
    puts "#{p}(#{m}!#{p}) #{h}Enter the location of the video file to be compressed"
    puts "#{h}Example #{k}: #{m}/home/user/"
    print "#{k}Location #{m}: #{p}"
    loc = gets.chomp
    puts "#{p}(#{m}!#{p}) #{h}Enter the name of the video to be compressed"
    puts "#{h}Example #{k}: #{m}video.mp4"
    print "#{k}video #{m}: #{p}"
    file = gets.chomp
    puts "#{p}(#{m}!#{p}) #{h}Enter the name of the compressed video"
    puts "#{h}Example #{k}: #{m}video_kompres.mp4"
    print "#{k}result #{m}: #{p}"
    result = gets.chomp
    puts "#{p}(#{m}!#{p}) #{h}Input Location to saves the compressed video"
    puts "#{h}Example #{k}: #{m}/home/user/video"
    print "#{k}Location #{m}: #{p}"
    locoout = gets.chomp
    system("cd #{Location} && ffmpeg -i '#{file}' -c:v libx265 -crf 25 -c:a copy '#{result}' && mv #{result} #{locoout}")
    puts "#{b}====================================="
    puts "#{p}(#{h}✔#{p}) #{h}Video compress finished"
    puts "#{h}The compressed video #{k}: #{p}#{file}"
    puts "#{h}Result compressed video   #{k}: #{p}#{result}"
    puts "#{h}Results location  #{k}: #{p}#{locoout}"
    puts "#{b}=====================================\n"
    puts "#{b}[ #{p}Click Enter To Return #{b}]"
    again = gets.chomp
    main
end
main

