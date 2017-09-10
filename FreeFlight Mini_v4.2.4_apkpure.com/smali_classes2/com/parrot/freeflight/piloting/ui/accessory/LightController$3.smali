.class Lcom/parrot/freeflight/piloting/ui/accessory/LightController$3;
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
    .line 79
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->access$100(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->stopLightAnimation(I)V

    .line 90
    :goto_0
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->access$200(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->access$100(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->startAnimation(I)V

    goto :goto_0
.end method
