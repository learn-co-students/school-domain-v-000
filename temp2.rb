
require 'pry'

def sort
 roster = {7=>["Blake Johnson", "Jack Bauer"], 9=>["Homer Simpson", "Bart Simpson"], 10=>["Avi Flombaum", "Jeff Baird"]}
 z = []
  roster.each do |k,v|
    z = v.sort
    roster[k] = z
    end
    puts roster
end



sort