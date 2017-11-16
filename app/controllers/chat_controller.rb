class ChatController < ApplicationController
  def keyboard_init
    @msg = {
      type: "buttons",
      buttons: ["오늘의 주요기사 알려줘", "들을만한 노래 추천해줘"]
    }
    render json: @msg, status: :ok
  end

  def chat_control
    if @response == "오늘의 주요기사 알려줘"
      @msg = {
        message:{
          text: "오늘의 주요기사 입니다."
        },
        keyboard:{
          type: "buttons",
          buttons: ["오늘의 주요기사 알려줘", "들을만한 노래 추천해줘"]
        }
      }
      render json: @msg, status: :ok
    else
      @msg = {
        message:{
          text: "들을만한 노래 입니다."
        },
        keyboard:{
          type: "buttons",
          buttons: ["오늘의 주요기사 알려줘", "들을만한 노래 추천해줘"]
        }
      }
      render json: @msg, status: :ok
    end
  end
end
