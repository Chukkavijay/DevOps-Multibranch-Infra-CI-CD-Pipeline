resource "local_file" "foo" {
  content = templatefile("details.tpl",
    {

      master01 = aws_instance.master-1.public_ip
      worker01 = aws_instance.worker-1.public_ip
      worker02 = aws_instance.worker-2.public_ip
    }
  )
  filename = "invfile"
}
