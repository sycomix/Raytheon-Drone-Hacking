.class public interface abstract Lorg/mortbay/jetty/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Lorg/mortbay/component/LifeCycle;


# static fields
.field public static final __DefaultSessionCookie:Ljava/lang/String; = "JSESSIONID"

.field public static final __DefaultSessionDomain:Ljava/lang/String;

.field public static final __DefaultSessionURL:Ljava/lang/String; = "jsessionid"

.field public static final __MaxAgeProperty:Ljava/lang/String; = "org.mortbay.jetty.servlet.MaxAge"

.field public static final __SessionCookieProperty:Ljava/lang/String; = "org.mortbay.jetty.servlet.SessionCookie"

.field public static final __SessionDomainProperty:Ljava/lang/String; = "org.mortbay.jetty.servlet.SessionDomain"

.field public static final __SessionPathProperty:Ljava/lang/String; = "org.mortbay.jetty.servlet.SessionPath"

.field public static final __SessionURLProperty:Ljava/lang/String; = "org.mortbay.jetty.servlet.SessionURL"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lorg/mortbay/jetty/SessionManager;->__DefaultSessionDomain:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract access(Ljavax/servlet/http/HttpSession;Z)Ljavax/servlet/http/Cookie;
.end method

.method public abstract addEventListener(Ljava/util/EventListener;)V
.end method

.method public abstract clearEventListeners()V
.end method

.method public abstract complete(Ljavax/servlet/http/HttpSession;)V
.end method

.method public abstract getClusterId(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;
.end method

.method public abstract getHttpOnly()Z
.end method

.method public abstract getHttpSession(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;
.end method

.method public abstract getIdManager()Lorg/mortbay/jetty/SessionIdManager;
.end method

.method public abstract getMaxCookieAge()I
.end method

.method public abstract getMaxInactiveInterval()I
.end method

.method public abstract getMetaManager()Lorg/mortbay/jetty/SessionIdManager;
.end method

.method public abstract getNodeId(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;
.end method

.method public abstract getSecureCookies()Z
.end method

.method public abstract getSessionCookie()Ljava/lang/String;
.end method

.method public abstract getSessionCookie(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Z)Ljavax/servlet/http/Cookie;
.end method

.method public abstract getSessionDomain()Ljava/lang/String;
.end method

.method public abstract getSessionPath()Ljava/lang/String;
.end method

.method public abstract getSessionURL()Ljava/lang/String;
.end method

.method public abstract getSessionURLPrefix()Ljava/lang/String;
.end method

.method public abstract isUsingCookies()Z
.end method

.method public abstract isValid(Ljavax/servlet/http/HttpSession;)Z
.end method

.method public abstract newHttpSession(Ljavax/servlet/http/HttpServletRequest;)Ljavax/servlet/http/HttpSession;
.end method

.method public abstract removeEventListener(Ljava/util/EventListener;)V
.end method

.method public abstract setIdManager(Lorg/mortbay/jetty/SessionIdManager;)V
.end method

.method public abstract setMaxCookieAge(I)V
.end method

.method public abstract setMaxInactiveInterval(I)V
.end method

.method public abstract setSessionCookie(Ljava/lang/String;)V
.end method

.method public abstract setSessionDomain(Ljava/lang/String;)V
.end method

.method public abstract setSessionHandler(Lorg/mortbay/jetty/servlet/SessionHandler;)V
.end method

.method public abstract setSessionPath(Ljava/lang/String;)V
.end method

.method public abstract setSessionURL(Ljava/lang/String;)V
.end method
