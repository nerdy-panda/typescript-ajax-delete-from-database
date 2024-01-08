import { DeleteButtons, DeleteResponse } from "../../Types/Utilities.js";

class Program {
    protected deleteButtons : NodeListOf< HTMLAnchorElement> | null = null ;
    protected loading : HTMLElement|null = null ;
    main(){
        this.loading = window.document.body.querySelector('#loading');
        this.deleteButtons = window.document.body.querySelectorAll('.delete-button');
        this.bindClickListenerToDeleteButtons();
    }
    protected bindClickListenerToDeleteButtons():void {
        for (const deleteButton of <DeleteButtons>this.deleteButtons)
            deleteButton.addEventListener('click',this.deleteButtonClickListener);
    }
    protected deleteButtonClickListener = (event : MouseEvent):void => {
        const target : HTMLAnchorElement = <HTMLAnchorElement> event.currentTarget;
        const productIdAttribute :string = <string> target.getAttribute('data-product-id');
        const productId : number  = Number.parseInt(productIdAttribute);
        this.deleteProduct(productId);
    }
    protected loadDeleteRequestListener = (event:ProgressEvent):void => {
        const request : XMLHttpRequest = <XMLHttpRequest> event.target ;
        const status:number = request.status ; 
        const response : DeleteResponse = window.JSON.parse(request.response);
        if(status!==200)
            return;
        this.deleteProductById(response.productId);
        this.refereshProductsIndex();
        this.hideLoading();
        window.setTimeout(function(){
            window.alert(response.message)
        },100);
    }
    protected deleteProduct(id : number):void {
        const uri :string = `Ajax/delete-product.php?product-id=${id}`; 
        const request : XMLHttpRequest = new window.XMLHttpRequest();
        request.addEventListener('load',this.loadDeleteRequestListener);
        request.open("GET",uri);
        request.send();
        this.showLoading();
    }
    protected findProductById(id:number):HTMLElement|null {
        return  window.document.body.querySelector(`[data-product-id="${id}"]`);
    }
    protected deleteProductById(id : number):void {
        this.findProductById(id)?.remove();
    }
    protected showLoading():void {
        this.loading?.classList.remove('dis-none');
    }
    protected hideLoading():void {
        this.loading?.classList.add('dis-none');
    }
    protected refereshProductsIndex():void {
        const indexes : NodeListOf<HTMLTableCellElement> = window.document.body.querySelectorAll("tbody tr td:first-child") as NodeListOf<HTMLTableCellElement>;
        let counter = 1 ;
        for (const index of indexes)
            index.innerText = (counter++).toString();
    }
}
export default Program;