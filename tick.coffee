#
# 1秒ごとにカウントアップするテスト
#
Timer = React.createClass
  getInitialState: ->     # 初期化関数 renderの前に呼ばれる
    secondsElapsed: 0
  tick: ->                # setStateを呼ぶとrenderされるのだと思う
    this.setState
      secondsElapsed: this.state.secondsElapsed + 1
    # this.state.secondsElapsed += 1 これでは駄目
  componentDidMount: ->   # 最初にrenderされたとき呼ばれる
    this.interval = setInterval this.tick, 1000
  componentWillUnmount: ->
    clearInterval this.interval
  render: ->
    <div>Seconds Elapsed: {this.state.secondsElapsed}</div>

React.render <Timer />, tickdiv

