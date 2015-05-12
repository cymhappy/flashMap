package view 
{
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.geom.ColorTransform;
	/**
	 * 中国地图里的行政省
	 * @author cymhappy
	 */
	public class Province 
	{
		/**行政省的地图mc**/
		private var map:Sprite;
		/**地图mc中的shape**/
		private var shape:Shape;
		/**行省的名字**/
		private var _name:String;
		
		
		public function Province($map:Sprite) 
		{
			map = $map;
			init();
		}
		
		private function init():void 
		{
			/**获取shape**/
			if (!(shape = map.getChildAt(0) as Shape))
			{
				throw new Error("传入的地图Mc不正确!没有找到Shape");
			}
			/**获取行省的名字**/
			_name = map.name;
			
			trace(_name);
			
		}
		/**
		 * 设置tips
		 */
		private function setTip():void 
		{
			map.addEventListener(MouseEvent.MOUSE_OVER, onMapOver);
		}
		
		private function onMapOver(e:MouseEvent):void 
		{
			
		}
		
		
		/**
		 * 改变省地图的颜色
		 * @param	color  颜色值,比如0xFFFF0000 每两位表示一个颜色值,分别表示 透明度,红,绿,蓝
		 */
		public function setColor(color:uint):void
		{
			var colorTransform:ColorTransform = shape.transform.colorTransform;
			colorTransform.color = color;
			shape.transform.colorTransform = colorTransform;
		}
		/**
		 * 该省的地图显示对象
		 */
		public function get content():Sprite
		{
			return map;
		}
		/**
		 * 获取行省的名称
		 */
		public function get name():String
		{
			return _name;
		}
		
	}

}