(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/forum/forum-index"],{"06c3":function(n,t,e){"use strict";e.r(t);var r=e("c397"),o=e("7fcc");for(var u in o)"default"!==u&&function(n){e.d(t,n,(function(){return o[n]}))}(u);e("5971");var i,c=e("f0c5"),a=Object(c["a"])(o["default"],r["b"],r["c"],!1,null,null,null,!1,r["a"],i);t["default"]=a.exports},"1fa3":function(n,t,e){"use strict";(function(n){e("ab5b");r(e("66fd"));var t=r(e("06c3"));function r(n){return n&&n.__esModule?n:{default:n}}wx.__webpack_require_UNI_MP_PLUGIN__=e,n(t.default)}).call(this,e("543d")["createPage"])},3146:function(n,t,e){"use strict";Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var r=o(e("a34a"));function o(n){return n&&n.__esModule?n:{default:n}}function u(n,t,e,r,o,u,i){try{var c=n[u](i),a=c.value}catch(s){return void e(s)}c.done?t(a):Promise.resolve(a).then(r,o)}function i(n){return function(){var t=this,e=arguments;return new Promise((function(r,o){var i=n.apply(t,e);function c(n){u(i,r,o,c,a,"next",n)}function a(n){u(i,r,o,c,a,"throw",n)}c(void 0)}))}}e("1f04");var c=function(){Promise.all([e.e("common/vendor"),e.e("components/uni-ui/lib/uni-icons/uni-icons")]).then(function(){return resolve(e("d151"))}.bind(null,e)).catch(e.oe)},a=function(){e.e("components/uni-ui/lib/uni-notice-bar/uni-notice-bar").then(function(){return resolve(e("73b7"))}.bind(null,e)).catch(e.oe)},s={components:{uniIcons:c,uniNoticeBar:a},data:function(){return{swiperList:[],list:[],searchForm:{},mescroll:null,downOption:{auto:!1},upOption:{page:{},noMoreSize:3,textNoMore:"~ 没有更多了 ~"},hasNext:!0}},onShow:function(){var n=this;return i(r.default.mark((function t(){return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:n.hasNext=!0,n.mescroll&&n.mescroll.resetUpScroll();case 2:case"end":return t.stop()}}),t)})))()},methods:{mescrollInit:function(n){this.mescroll=n},downCallback:function(n){this.hasNext=!0,n.resetUpScroll()},upCallback:function(n){var t=this;return i(r.default.mark((function e(){var o,u;return r.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return o={forumStateTypes:1,page:n.num,limit:n.size},e.next=3,t.$api.list("forum",o);case 3:u=e.sent,1==n.num&&(t.list=[]),t.list=t.list.concat(u.data.list),0==u.data.list.length&&(t.hasNext=!1),n.endSuccess(n.size,t.hasNext);case 8:case"end":return e.stop()}}),e)})))()},onDetailTap:function(n){this.$utils.jump("../forum/forum-detail?id=".concat(n))},onSwiperTap:function(n){},search:function(){var n=this;return i(r.default.mark((function t(){var e,o,u;return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return e=n,e.mescroll.num=1,1==e.mescroll.num&&(e.list=[]),o={forumStateTypes:1,page:e.mescroll.num,limit:e.mescroll.size,forumName:e.searchForm.forumName},t.next=6,e.$api.list("forum",o);case 6:u=t.sent,e.list=e.list.concat(u.data.list),0==u.data.list.length&&(e.hasNext=!1),e.mescroll.endSuccess(e.mescroll.size,e.hasNext);case 10:case"end":return t.stop()}}),t)})))()}}};t.default=s},5971:function(n,t,e){"use strict";var r=e("f9aa"),o=e.n(r);o.a},"7fcc":function(n,t,e){"use strict";e.r(t);var r=e("3146"),o=e.n(r);for(var u in r)"default"!==u&&function(n){e.d(t,n,(function(){return r[n]}))}(u);t["default"]=o.a},c397:function(n,t,e){"use strict";e.d(t,"b",(function(){return o})),e.d(t,"c",(function(){return u})),e.d(t,"a",(function(){return r}));var r={mescrollUni:function(){return Promise.all([e.e("common/vendor"),e.e("components/mescroll-uni/mescroll-uni")]).then(e.bind(null,"5aa3"))}},o=function(){var n=this,t=n.$createElement,e=(n._self._c,n.__map(n.list,(function(t,e){var r=n.__get_orig(t),o=t.forumContent.length>50?t.forumContent.substring(0,50):null;return{$orig:r,g0:o}})));n.$mp.data=Object.assign({},{$root:{l0:e}})},u=[]},f9aa:function(n,t,e){}},[["1fa3","common/runtime","common/vendor"]]]);