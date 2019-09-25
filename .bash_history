sudo kubeadm init --pod-network-cidr=10.244.0.0/16
kubeadm join 10.0.1.228:6443 --token c1ubim.c7povqkarmwx440z     --discovery-token-ca-cert-hash sha256:3ada6c167f04763e3fc8b24027ccefc9f1cb9912a58befc9953fe1e713e33cc3
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl get nodes
curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get > get_helm.sh
chmod 700 get_helm.sh
./get_helm.sh
vi clusterrole.yaml
rm clusterrole.yaml 
ls
git clone https://github.com/deepakbedase123/hemlchart.git 
ls
cd hemlchart/
ls
kubectl create -f clusterrole.yaml
kubectl delete clusterrole cluster-admin
kubectl create -f clusterrole.yaml
kubectl create serviceaccount -n kube-system tiller
