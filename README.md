# Action for uploading packages to Anaconda cloud

This action does not build packages, it only uploads tarball (.tar.bz2) files created by conda-build into Anaconda cloud.

```yaml
name: Publish MyApp

on: [release]

jobs:
  publish:
    name: Publish to Conda
    runs-on: ubuntu-latest
    
    steps:
    - name: Checkout
      uses: actions/checkout@v2

    - name: publish-to-conda
      uses: marek-mihok/upload_to_anaconda_cloud_action@v1.0.0
      with:
        CondaUsername: ${{ secrets.CONDA_USERNAME }}
        CondaPassword: ${{ secrets.CONDA_PASSWORD }}
        # PackagesDir [optional]: Directory containing your tarball (.tar.bz2) files.
        PackagesDir: 'sdist'
```
