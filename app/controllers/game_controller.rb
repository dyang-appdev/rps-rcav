class GameController < ApplicationController
  def user_plays_rock
      
    @computer_move = ["rock", "paper", "scissors"].sample
      
    if @computer_move == "rock"
        @outcome = "tied"
        @image = "far fa-hand-rock fa-10x"
    elsif @computer_move == "paper"
        @outcome = "lost"
        @image = "far fa-hand-paper fa-10x"
    else 
        @outcome = "won"
        @image = "far fa-hand-scissors fa-10x"
    end

    render("move_templates/play_rock.html.erb")
  end
  
  def user_plays_paper
    @computer_move = ["rock", "paper", "scissors"].sample
      
    if @computer_move == "rock"
        @outcome = "won"
        @image = "far fa-hand-rock fa-10x"
    elsif @computer_move == "paper"
        @outcome = "tied"
        @image = "far fa-hand-paper fa-10x"
    else 
        @outcome = "lost"
        @image = "far fa-hand-scissors fa-10x"
    end

    render("move_templates/play_paper.html.erb")
  end
     
  def user_plays_scissors
    @computer_move = ["rock", "paper", "scissors"].sample
      
    if @computer_move == "rock"
        @outcome = "lost"
        @image = "far fa-hand-rock fa-10x"
    elsif @computer_move == "paper"
        @outcome = "won"
        @image = "far fa-hand-paper fa-10x"
    else 
        @outcome = "tied"
        @image = "far fa-hand-scissors fa-10x"
    end

    render("move_templates/play_scissors.html.erb")
  end
       
  def index
      render("move_templates/index.html")
      
  end
end