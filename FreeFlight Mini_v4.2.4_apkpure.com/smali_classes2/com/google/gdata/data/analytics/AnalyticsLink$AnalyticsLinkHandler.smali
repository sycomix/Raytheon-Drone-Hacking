.class Lcom/google/gdata/data/analytics/AnalyticsLink$AnalyticsLinkHandler;
.super Lcom/google/gdata/data/Link$AtomHandler;
.source "AnalyticsLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/analytics/AnalyticsLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnalyticsLinkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/analytics/AnalyticsLink;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/analytics/AnalyticsLink;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/gdata/data/analytics/AnalyticsLink$AnalyticsLinkHandler;->this$0:Lcom/google/gdata/data/analytics/AnalyticsLink;

    .line 181
    const-class v0, Lcom/google/gdata/data/analytics/AnalyticsLink;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/Link$AtomHandler;-><init>(Lcom/google/gdata/data/Link;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 182
    return-void
.end method


# virtual methods
.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/Link$AtomHandler;->processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v0, "http://schemas.google.com/g/2005"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "targetKind"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/gdata/data/analytics/AnalyticsLink$AnalyticsLinkHandler;->this$0:Lcom/google/gdata/data/analytics/AnalyticsLink;

    invoke-static {v0, p3}, Lcom/google/gdata/data/analytics/AnalyticsLink;->access$002(Lcom/google/gdata/data/analytics/AnalyticsLink;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    :cond_0
    return-void
.end method
