.class Lcom/parrot/freeflight/core/academy/AcademyManager$4$2;
.super Ljava/lang/Object;
.source "AcademyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/AcademyManager$4;->youtubeManagerUploadInProgress(Lcom/parrot/freeflight3/ARYoutubeManager;Ljava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/core/academy/AcademyManager$4;

.field final synthetic val$progress:F


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyManager$4;F)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/core/academy/AcademyManager$4;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$4$2;->this$1:Lcom/parrot/freeflight/core/academy/AcademyManager$4;

    iput p2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$4$2;->val$progress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$4$2;->this$1:Lcom/parrot/freeflight/core/academy/AcademyManager$4;

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$4;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$4$2;->val$progress:F

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1800(Lcom/parrot/freeflight/core/academy/AcademyManager;F)V

    .line 320
    return-void
.end method
