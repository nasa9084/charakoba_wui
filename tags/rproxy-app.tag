<rproxy-app>
  <h2>REVERSE PROXY</h2>
  <section>
    <api-dead-or-alive live={ live }></api-dead-or-alive>
  </section>

  <script>
   this.live = 'DEAD'
   var self = this
   superagent.get(config.apibaseuri + '/rproxy/')
             .end(function(err, res) {
               self.live = JSON.parse(res.status)
               riot.update()
             })
  </script>
</rproxy-app>
