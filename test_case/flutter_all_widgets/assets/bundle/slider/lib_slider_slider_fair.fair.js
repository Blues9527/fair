GLOBAL['#FairKey#']=(function(__initProps__){const __global__=this;return runCallback(function(__mod__){with(__mod__.imports){function _FairSliderPageState(){const inner=_FairSliderPageState.__inner__;if(this==__global__){return new _FairSliderPageState({__args__:arguments});}else{const args=arguments.length>0?arguments[0].__args__||arguments:[];inner.apply(this,args);_FairSliderPageState.prototype.ctor.apply(this,args);return this;}}_FairSliderPageState.__inner__=function inner(){this.fairProps=__initProps__;this._sliderValue=0;};_FairSliderPageState.prototype={initState:function initState(){const __thiz__=this;with(__thiz__){fairProps=widget.fairProps;}},_onChanged:function _onChanged(v){const __thiz__=this;const __arg_ctx__={v,};with(__thiz__){with(__arg_ctx__){setState('#FairKey#',function dummy(){_sliderValue=v;});}}},};_FairSliderPageState.prototype.ctor=function(){Object.prototype.ctor.call(this);};;return _FairSliderPageState();}},[]);})(convertObjectLiteralToSetOrMap(JSON.parse('#FairProps#')));