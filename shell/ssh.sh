# Start the SSH agent
eval "$(ssh-agent -s)"

# Add all private SSH keys
for key in ~/.ssh/*_rsa; do
  [ -f "$key" ] && ssh-add "$key"
done
