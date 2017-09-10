.class Lcom/parrot/freeflight/piloting/ui/accessory/WingXController$2;
.super Ljava/lang/Object;
.source "WingXController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 65
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->access$100(Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;I)V

    .line 69
    return-void
.end method
