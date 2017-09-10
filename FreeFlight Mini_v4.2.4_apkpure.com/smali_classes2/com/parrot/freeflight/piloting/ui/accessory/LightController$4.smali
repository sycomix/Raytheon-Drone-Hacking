.class Lcom/parrot/freeflight/piloting/ui/accessory/LightController$4;
.super Ljava/lang/Object;
.source "LightController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/accessory/LightController;-><init>(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/accessory/LightController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$4;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$4;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->access$100(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->stopLightAnimation(I)V

    .line 104
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$4;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->access$300(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 102
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$4;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->access$100(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->startAnimation(I)V

    goto :goto_0
.end method
