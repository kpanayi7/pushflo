class ProgramsController < ApplicationController


def exist
@program

if Program.exists?(name: params[:filter])
then cl_image_tag Program.find_by(name: params[:filter]).photo.key
else
end

end



end
