output "ecr_repository_url" {
  value       = aws_ecr_repository.app_repo.repository_url
  description = "The URL of the ECR repository"
}

output "eks_cluster_endpoint" {
  value       = aws_eks_cluster.main.endpoint
  description = "The endpoint for your EKS Kubernetes API"
}

output "eks_cluster_name" {
  value       = aws_eks_cluster.main.name
  description = "The name of the EKS cluster"
}