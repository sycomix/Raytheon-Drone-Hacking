.class Lcom/google/gdata/client/authn/oauth/OAuthHelper$HeaderKeyValuePair;
.super Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;
.source "OAuthHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/authn/oauth/OAuthHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HeaderKeyValuePair"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 165
    const-string v0, "=\""

    const-string v1, "\""

    const-string v2, ", "

    invoke-direct {p0, v0, v1, v2}, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method
