.class Lcom/parrot/freeflight/core/academy/AcademyManager$4$3;
.super Ljava/lang/Object;
.source "AcademyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/AcademyManager$4;->youtubeManagerUploadDone(Lcom/parrot/freeflight3/ARYoutubeManager;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/core/academy/AcademyManager$4;

.field final synthetic val$videoUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyManager$4;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/core/academy/AcademyManager$4;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$4$3;->this$1:Lcom/parrot/freeflight/core/academy/AcademyManager$4;

    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$4$3;->val$videoUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$4$3;->this$1:Lcom/parrot/freeflight/core/academy/AcademyManager$4;

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$4;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$4$3;->val$videoUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1900(Lcom/parrot/freeflight/core/academy/AcademyManager;Ljava/lang/String;)V

    .line 330
    return-void
.end method
