class ButtonController < UIViewController

    def viewDidLoad
        margin = 20
    
        @state = UILabel.new
        @state.font = UIFont.systemFontOfSize(30)
        @state.text = 'Hello World app'
        @state.textAlignment = UITextAlignmentCenter
        @state.textColor = UIColor.whiteColor
        @state.backgroundColor = UIColor.clearColor
        @state.frame = [[margin, 200], [view.frame.size.width - margin * 2, 40]]
        view.addSubview(@state)
    
        @action = UIButton.buttonWithType(UIButtonTypeRoundedRect)
        @action.setTitle('Say Hello World!', forState:UIControlStateNormal)
        @action.addTarget(self, action:'actionTapped', forControlEvents:UIControlEventTouchUpInside)
        @action.frame = [[margin, 260], [view.frame.size.width - margin * 2, 40]]
        view.addSubview(@action)

        @helloWorld = UILabel.new
        @helloWorld.font = UIFont.systemFontOfSize(30)
        @helloWorld.text = ''
        @helloWorld.textAlignment = UITextAlignmentCenter
        @helloWorld.textColor = UIColor.whiteColor
        @helloWorld.backgroundColor = UIColor.clearColor
        @helloWorld.frame = [[margin, 400], [view.frame.size.width - margin * 2, 40]]
        view.addSubview(@helloWorld)
      end

      def actionTapped
        @helloWorld.text = 'HELLO WORLD! :)'
      end

end