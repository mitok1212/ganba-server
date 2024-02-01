class StudynotesController < ApplicationController
    def add_studynote
        Studynote.create(date: params[:date],studytime: params[:studytime],subject: params[:subject],username: params[:username],goal: params[:goal])
    end
    def show_studynote
        studynote = Studynote.find_by(username: params[:username])
        if studynote != nil
          render json: {message: "succeed",data: studynote}, status: :ok
        else
          render json: {message: "failed"}, status: :bad_request
        end
      end
end
