
If you're attaching VSCode to the container:
* Install the following extensions:
  * `Python`
  * `Jupyter`: `v2022.11.1003412109`\
  	If you go for a version which is too recent, you might face the following error:
	```bash
	Error rendering output item using 'jupyter-ipywidget-renderer'
		Cannot read properties of undefined (reading 'ipywidgetsKernel')
	```
	([Error rendering output item using 'jupyter-ipywidget-renderer' #14585](https://github.com/microsoft/vscode-jupyter/issues/14585))
	Maybe another solution: [Jupyter Notebook not rendering ipywidgets](https://stackoverflow.com/a/64492760/8612123)


