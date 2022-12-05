# Purpose
Test and deploy external DNS zone config for Route53.

## Zones
- 87.111.128.in-addr.arpa
- alexandria.ucsb.edu
- library.ucsb.edu
- dld.library.ucsb.edu
- ops.library.ucsb.edu

## Directories
- .github\workflows : steps to execute terraform plan and apply 
- terraform\zones   : zone files and terraform variables
- [tools\tfz53]() : dependency used for converting BIND zonefile to AWS Route53 resource definitions

# Updating zones
1. Checkout new branch from `main`
2. Update zone file(s) (i.e. terraform\zones\*.tf )
3. Test changes
   - Click `Actions` tab
   - Click `terraform: initialize and plan` on left
   - Click `Run workflow`
   - Change branch from `main` to new branch with changes
   - Click `Run workflow`
4. If test succeeds, create pull request to `main`
5. Request review for approval
6. Merge may be accepted after review
7. Merging Pull Request to `main` will automatically trigger updates to production config in Route53