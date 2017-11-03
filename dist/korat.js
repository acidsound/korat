window.k = function() {
  const a = Array.from(arguments);
  const args = a;
  if (((a[1] != null ? a[1].$$typeof : undefined) ||
    Array.isArray(a[1])) ||
    (typeof a[1] !== 'object')) { args.splice(1,0,null); }
  return React.createElement.apply(React, args);
};
