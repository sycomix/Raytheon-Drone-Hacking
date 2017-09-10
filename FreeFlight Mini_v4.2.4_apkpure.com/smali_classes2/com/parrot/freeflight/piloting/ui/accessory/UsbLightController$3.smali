.class Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$3;
.super Ljava/lang/Object;
.source "UsbLightController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;-><init>(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->access$000(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)Lcom/parrot/freeflight/core/model/LightAccessory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->access$000(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)Lcom/parrot/freeflight/core/model/LightAccessory;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/LightAccessory;->setState(I)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->access$000(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)Lcom/parrot/freeflight/core/model/LightAccessory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/core/model/LightAccessory;->setState(I)V

    goto :goto_0
.end method
