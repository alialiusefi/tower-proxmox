Useful commands:

- Setting up kubernetes control plane
    - sudo kubeadm init --control-plane-endpoint=<kube-controller-ip> --node-name kube-controller --pod-network-cidr=10.244.0.0/16

- Generate a join command for a node
    - kubeadm token create --print-join-command
    - run the output of the above command in node to join it to the controller.

- Set an overlay network
    - flannel implementation
        - kubectl apply -f https://raw.githubusercontent.com/flannel-io/flannel/master/Documentation/kube-flannel.yml