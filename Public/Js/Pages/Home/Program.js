class Program {
    constructor() {
        this.deleteButtons = null;
        this.loading = null;
        this.deleteButtonClickListener = (event) => {
            const target = event.currentTarget;
            const productIdAttribute = target.getAttribute('data-product-id');
            const productId = Number.parseInt(productIdAttribute);
            this.deleteProduct(productId);
        };
        this.loadDeleteRequestListener = (event) => {
            const request = event.target;
            const status = request.status;
            const response = window.JSON.parse(request.response);
            if (status !== 200)
                return;
            this.deleteProductById(response.productId);
            this.refereshProductsIndex();
            this.hideLoading();
            window.setTimeout(function () {
                window.alert(response.message);
            }, 100);
        };
    }
    main() {
        this.loading = window.document.body.querySelector('#loading');
        this.deleteButtons = window.document.body.querySelectorAll('.delete-button');
        this.bindClickListenerToDeleteButtons();
    }
    bindClickListenerToDeleteButtons() {
        for (const deleteButton of this.deleteButtons)
            deleteButton.addEventListener('click', this.deleteButtonClickListener);
    }
    deleteProduct(id) {
        const uri = `Ajax/delete-product.php?product-id=${id}`;
        const request = new window.XMLHttpRequest();
        request.addEventListener('load', this.loadDeleteRequestListener);
        request.open("GET", uri);
        request.send();
        this.showLoading();
    }
    findProductById(id) {
        return window.document.body.querySelector(`[data-product-id="${id}"]`);
    }
    deleteProductById(id) {
        var _a;
        (_a = this.findProductById(id)) === null || _a === void 0 ? void 0 : _a.remove();
    }
    showLoading() {
        var _a;
        (_a = this.loading) === null || _a === void 0 ? void 0 : _a.classList.remove('dis-none');
    }
    hideLoading() {
        var _a;
        (_a = this.loading) === null || _a === void 0 ? void 0 : _a.classList.add('dis-none');
    }
    refereshProductsIndex() {
        const indexes = window.document.body.querySelectorAll("tbody tr td:first-child");
        let counter = 1;
        for (const index of indexes)
            index.innerText = (counter++).toString();
    }
}
export default Program;
//# sourceMappingURL=Program.js.map