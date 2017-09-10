.class public Lcom/parrot/arsdk/aracademy/ARAcademyManager$LocalBinder;
.super Landroid/os/Binder;
.source "ARAcademyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/aracademy/ARAcademyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/aracademy/ARAcademyManager;


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/aracademy/ARAcademyManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager$LocalBinder;->this$0:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/parrot/arsdk/aracademy/ARAcademyManager;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyManager$LocalBinder;->this$0:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    return-object v0
.end method
