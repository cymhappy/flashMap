package events 
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.utils.Dictionary;

	public class GlobalEventDispatcher extends EventDispatcher implements IGlobalEventDispatcher {
		
		private var _globalListeners:Dictionary = new Dictionary();
		
		private var _dispatcher:IEventDispatcher;
		/**
		 * 添加监听函数
		 * @param	listener	添加的监听函数,发送事件时运行
		 */
		public function addGlobalListener(listener:Function):void {
			_globalListeners[listener] = true;
		}
		/**
		 * 移除监听函数
		 * @param	listener  要移除的监听函数
		 */
		public function removeGlobalListener(listener:Function):void {
			delete _globalListeners[listener];
		}
		/**
		 * 发送事件,运行监听函数
		 * @param	event
		 * @return
		 */
		public override function dispatchEvent(event:Event) : Boolean {
			for (var l:* in _globalListeners) {
				if (l is Function) {
					var listener:Function = l as Function;
					listener(event);
				}
			}
			return super.dispatchEvent(event);
		} 
		
	}
}