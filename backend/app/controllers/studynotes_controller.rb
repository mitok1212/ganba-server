class StudynotesController < ApplicationController
    def add_studynote
        Studynote.create(username: params[:username])
    end
    def date 
        studynote = Studynote.find_by(username: params[:username])
    studynote.update(date: params[:date])
    end
    def studytime
        studynote = Studynote.find_by(username: params[:username])
        studynote.update(studytime: params[:studytime])
    end
    #def subjectcolor#一旦置いとく
    #end
    #def studycontent#教科選択式,selectメソッド？？？
    #end
    def goal
        studynote = Studynote.find_by(username: params[:username])
        studynote.goal = params[:goal]
    end

end
