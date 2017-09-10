.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$2;
.super Ljava/lang/Object;
.source "DroneMemoryTransferFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

.field final synthetic val$droneImageView:Landroid/widget/ImageView;

.field final synthetic val$product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;Landroid/widget/ImageView;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    iput-object p2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$2;->val$droneImageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$2;->val$product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->access$200(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)V

    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$2;->val$droneImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->access$300(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$2;->val$product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductDrawableIcon(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    return-void
.end method
