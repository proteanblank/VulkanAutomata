#!/bin/bash
	source '/home/YOUR_USERNAME/vulkan/1.2.170.0/setup-env.sh'
	rm ./app/RunVkAuto
	rm ./app/vert_TriQuad.spv
	rm ./app/frag_automata0000.spv
	clear
	echo ""
	echo "  ./glslc ./dat/vert/vert_TriQuad.vert -o ./app/vert_TriQuad.spv"
	./glslc ./res/vert/vert_TriQuad.vert -o ./app/vert_TriQuad.spv
	echo "  ./glslc ./dat/frag/frag_automata0000.frag -o ./app/frag_automata0000.spv"
	./glslc ./res/frag/frag_automata0000.frag -o ./app/frag_automata0000.spv
	echo ""
	echo "  g++ VulkanAutomata.cpp -fconcepts -lX11 -lvulkan -o ./app/RunVkAuto"
	echo ""
	g++ VulkanAutomata.cpp -fconcepts -lX11 -lvulkan -o ./app/RunVkAuto
	echo ""
	echo "  BEGIN ./app/VulkanAutomata"
	echo ""
	./app/RunVkAuto
	echo ""
	echo "  END   ./app/VulkanAutomata"
	sleep "0.15"
	echo ""
