.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$7;
.super Ljava/lang/Object;
.source "DroneMemoryActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$7;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$7;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$700(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)V

    .line 279
    return-void
.end method
