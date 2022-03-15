class ProgramsController < ApplicationController


def show
@program = Program.exists?(name: params[:filter])
if Program.exists?(name: params[:filter])
then cl_image_tag Program.find_by(name: params[:filter]).photo.key
else
end

end


end
