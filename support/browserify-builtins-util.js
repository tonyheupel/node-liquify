// only implement inherits since it seems to be the most commonly used
  this.inherits = function (ctor, superCtor) {
    ctor.super_ = superCtor;
    ctor.prototype = Object.create(superCtor.prototype, { 
  	constructor: { 
  	  value: ctor, 
  	  enumerable: false, 
        writable: true, 
  	  configurable: true 
  	} 
    });
  };
