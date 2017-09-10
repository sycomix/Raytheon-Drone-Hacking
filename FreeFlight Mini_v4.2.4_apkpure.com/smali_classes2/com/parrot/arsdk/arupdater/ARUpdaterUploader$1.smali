.class Lcom/parrot/arsdk/arupdater/ARUpdaterUploader$1;
.super Ljava/lang/Object;
.source "ARUpdaterUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader$1;->this$0:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader$1;->this$0:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    iget-object v1, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader$1;->this$0:Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;

    invoke-static {v1}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->access$000(Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;->access$100(Lcom/parrot/arsdk/arupdater/ARUpdaterUploader;J)V

    .line 72
    return-void
.end method
