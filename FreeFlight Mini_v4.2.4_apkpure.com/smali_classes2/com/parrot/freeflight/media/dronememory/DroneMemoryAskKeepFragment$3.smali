.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$3;
.super Ljava/lang/Object;
.source "DroneMemoryAskKeepFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$3;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$3;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;)V

    .line 89
    return-void
.end method
