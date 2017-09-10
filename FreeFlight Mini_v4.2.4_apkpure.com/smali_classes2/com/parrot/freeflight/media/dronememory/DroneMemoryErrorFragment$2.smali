.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment$2;
.super Ljava/lang/Object;
.source "DroneMemoryErrorFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;)V

    .line 105
    return-void
.end method
