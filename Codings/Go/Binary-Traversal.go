package main

import "fmt"

type Node struct {
	data  int
	left  *Node
	right *Node
}

func preorder(root *Node) {
	if root != nil {
		fmt.Print(root.data, " ")
		preorder(root.left)
		preorder(root.right)
	}
}

func inorder(root *Node) {
	if root != nil {
		inorder(root.left)
		fmt.Print(root.data, " ")
		inorder(root.right)
	}
}

func postorder(root *Node) {
	if root != nil {
		postorder(root.left)
		postorder(root.right)
		fmt.Print(root.data, " ")
	}
}

func main() {
	root := &Node{data: 10}
	root.left = &Node{data: 20}
	root.right = &Node{data: 30}
	root.left.left = &Node{data: 40}
	root.left.right = &Node{data: 50}
	root.right.left = &Node{data: 60}
	root.right.right = &Node{data: 70}

	fmt.Println("Binary Tree Traversal")

	fmt.Println("Preorder Traversal : ")
	preorder(root)
	fmt.Println()

	fmt.Println("Inorder Traversal : ")
	inorder(root)
	fmt.Println()

	fmt.Println("Postorder Traversal : ")
	postorder(root)
	fmt.Println()

}
