package view 
{
	import flash.text.TextFormat;
	/**
	 * ...
	 * @author cymhappy
	 */
	public class Tipcontent 
	{
		private var _title:String;
		
		private var _content:String;
		
		private var _bgAlpha:Number = 1;
		
		private var _titleFormat:TextFormat;
		
		private var _contentFormat:TextFormat;
		
		private var _align:String = "center";
		
		private var _delay:Number = 0;  //millilseconds
		
		private var _tipWidth:Number = 200;
		
		public function Tipcontent() 
		{
			
		}
		/**
		 * tip标题
		 */
		public function get title():String 
		{
			return _title;
		}
		
		public function set title(value:String):void 
		{
			_title = value;
		}
		/**
		 * tip内容
		 */
		public function get content():String 
		{
			return _content;
		}
		
		public function set content(value:String):void 
		{
			_content = value;
		}
		/**
		 * 背景透明度,默认1
		 */
		public function get bgAlpha():Number 
		{
			return _bgAlpha;
		}
		
		public function set bgAlpha(value:Number):void 
		{
			_bgAlpha = value;
		}
		/**
		 * 标题格式
		 */
		public function get titleFormat():TextFormat 
		{
			return _titleFormat;
		}
		
		public function set titleFormat(value:TextFormat):void 
		{
			_titleFormat = value;
		}
		/**
		 * 内容格式
		 */
		public function get contentFormat():TextFormat 
		{
			return _contentFormat;
		}
		
		public function set contentFormat(value:TextFormat):void 
		{
			_contentFormat = value;
		}
		/**
		 * 对齐方式
		 */
		public function get align():String 
		{
			return _align;
		}
		
		public function set align(value:String):void 
		{
			_align = value;
		}
		/**
		 * 延迟时间
		 */
		public function get delay():Number 
		{
			return _delay;
		}
		
		public function set delay(value:Number):void 
		{
			_delay = value;
		}
		/**
		 * tip宽度
		 */
		public function get tipWidth():Number 
		{
			return _tipWidth;
		}
		
		public function set tipWidth(value:Number):void 
		{
			_tipWidth = value;
		}
		
	}

}