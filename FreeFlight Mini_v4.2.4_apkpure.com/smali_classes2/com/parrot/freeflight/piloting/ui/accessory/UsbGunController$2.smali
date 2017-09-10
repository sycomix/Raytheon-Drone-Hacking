.class Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController$2;
.super Ljava/lang/Object;
.source "UsbGunController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;-><init>(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->access$100(Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->close()V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbGunController;->open()V

    goto :goto_0
.end method
