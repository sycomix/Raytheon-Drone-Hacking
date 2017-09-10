.class Lcom/parrot/freeflight/piloting/ui/accessory/WingXController$1;
.super Ljava/lang/Object;
.source "WingXController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/accessory/Swiper$OnSwipeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;-><init>(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipe(Z)V
    .locals 2
    .param p1, "up"    # Z

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->access$000(Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->access$100(Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;I)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->access$000(Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->access$100(Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;I)V

    goto :goto_0
.end method
