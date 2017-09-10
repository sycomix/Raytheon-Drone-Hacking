.class Lcom/parrot/freeflight/piloting/ui/accessory/LightController$1;
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
    .line 63
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->access$002(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;Z)Z

    .line 67
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->open()V

    .line 68
    return-void
.end method
