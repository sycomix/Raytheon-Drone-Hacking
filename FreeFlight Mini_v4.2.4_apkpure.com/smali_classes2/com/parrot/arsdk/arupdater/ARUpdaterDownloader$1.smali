.class Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader$1;
.super Ljava/lang/Object;
.source "ARUpdaterDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader$1;->this$0:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader$1;->this$0:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    iget-object v1, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader$1;->this$0:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    invoke-static {v1}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->access$000(Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->access$100(Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;J)V

    .line 79
    return-void
.end method
