.class Lcom/parrot/freeflight/academy/ProfileEditActivity$4;
.super Ljava/lang/Object;
.source "ProfileEditActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/ProfileEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/ProfileEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/ProfileEditActivity;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$4;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$4;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->access$900(Lcom/parrot/freeflight/academy/ProfileEditActivity;)V

    .line 142
    return-void
.end method
