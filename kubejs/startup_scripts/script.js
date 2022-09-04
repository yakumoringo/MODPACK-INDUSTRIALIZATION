priority: 10
onEvent('item.registry', event => {
	// Register new items here
	// event.create('example_item').displayName('Example Item')
	event.create('test_item')
	.displayName('测试物品')
	.color(0,0x66ccff)
})

onEvent('block.registry', event => {
	// Register new blocks here
	// event.create('example_block').material('wood').hardness(1.0).displayName('Example Block')
})













