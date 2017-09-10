.class Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController$1;
.super Ljava/lang/Object;
.source "UsbClawController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;-><init>(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->access$000(Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;)Lcom/parrot/freeflight/core/model/ClawAccessory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;->access$000(Lcom/parrot/freeflight/piloting/ui/accessory/UsbClawController;)Lcom/parrot/freeflight/core/model/ClawAccessory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/ClawAccessory;->switchState()V

    .line 52
    :cond_0
    return-void
.end method
