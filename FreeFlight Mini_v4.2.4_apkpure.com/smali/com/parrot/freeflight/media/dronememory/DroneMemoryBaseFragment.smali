.class public abstract Lcom/parrot/freeflight/media/dronememory/DroneMemoryBaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "DroneMemoryBaseFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$OnBackPressedListener;


# instance fields
.field protected mDroneMemoryActivity:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 19
    check-cast p1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryBaseFragment;->mDroneMemoryActivity:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    .line 20
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryBaseFragment;->mDroneMemoryActivity:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    .line 25
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 26
    return-void
.end method
