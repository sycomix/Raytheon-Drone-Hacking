.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$4;
.super Ljava/lang/Object;
.source "DroneMemoryDeleteFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$4;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$4;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->access$700(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)V

    .line 154
    return-void
.end method
