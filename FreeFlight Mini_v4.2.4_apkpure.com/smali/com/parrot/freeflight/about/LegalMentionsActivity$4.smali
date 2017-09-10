.class Lcom/parrot/freeflight/about/LegalMentionsActivity$4;
.super Ljava/lang/Object;
.source "LegalMentionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/about/LegalMentionsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/about/LegalMentionsActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/about/LegalMentionsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/about/LegalMentionsActivity;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/parrot/freeflight/about/LegalMentionsActivity$4;->this$0:Lcom/parrot/freeflight/about/LegalMentionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/about/LegalMentionsActivity$4;->this$0:Lcom/parrot/freeflight/about/LegalMentionsActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->onBackPressed(Landroid/support/v4/app/FragmentActivity;)V

    .line 101
    return-void
.end method
